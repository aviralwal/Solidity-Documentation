pragma solidity ^0.4.16;

///@title GDPR Contract
///@author DLT Labs

contract GDPR
{

    mapping (string => empStructure) empData;

    event Success(string id);

    struct empStructure
    {
        string empid; //hash coming from mongo
        uint transactionType; // type of transaction
        string transactionTime; //transaction time
        string metadata; //metadata for a transaction
        bool isConsent; //If any consent is provided
        string consentProvidedAt; // consent data if consent is provided
        string createdOn; //timestamp the emp transaction is created
    }

    ///@notice Will write the incoming data into the blockchain
    ///@dev the incoming data will be without consent and an event is fired returning the transaction id 
    ///@param _id transaction id coming from mongo (string)
    ///@param _empId employee id (string)
    ///@param _transactionType type of transaction(int)
    ///@param _transactionTime timestamp of PII transaction being written(string)
    ///@param _metadata incopming metadata for the employee(string)
    ///@param _createdOn timestamp when the transaction was created(string)
    function writeData(string _id, string _empId, uint _transactionType, string _transactionTime, string _metadata, string _createdOn)
    {
        empData[_id] = empStructure({empid: _empId, transactionType: _transactionType, transactionTime: _transactionTime, metadata: _metadata, isConsent: false, consentProvidedAt: "", createdOn: _createdOn});
        Success(_id);
    }

    ///@notice Will write the incoming data into the blockchain
    ///@dev the incoming data will be without consent and an event is fired returning the transaction id 
    ///@param _id transaction id coming from mongo (string)
    ///@param _empId employee id (string)
    ///@param _transactionType type of transaction(int)
    ///@param _transactionTime timestamp of PII transaction being written(string)
    ///@param _metadata incopming metadata for the employee(string)
    ///@param _consent timestamp of consent given(string)
    ///@param _createdOn timestamp when the transaction was created(string)
    function writeDataForConsent(string _id, string _empId, uint _transactionType, string _transactionTime, string _metadata, string _consent, string _createdOn)
    {
        empData[_id] = empStructure({empid: _empId, transactionType: _transactionType, transactionTime: _transactionTime, metadata: _metadata, isConsent: true, consentProvidedAt: _consent, createdOn: _createdOn});
        Success(_id);
    }


}