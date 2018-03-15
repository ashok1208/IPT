<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Mail_Alert</fullName>
        <description>Mail Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>ashok8@ipt.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/CommunityForgotPasswordEmailTemplate</template>
    </alerts>
    <fieldUpdates>
        <fullName>UpdateField</fullName>
        <field>AccountType__c</field>
        <literalValue>ASHOK</literalValue>
        <name>UpdateField</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <outboundMessages>
        <fullName>OutBond_Message</fullName>
        <apiVersion>42.0</apiVersion>
        <endpointUrl>https://mail.google.com/mail/u/0/#inbox</endpointUrl>
        <fields>Gender__c</fields>
        <fields>Id</fields>
        <fields>Loan_Amount__c</fields>
        <fields>Name</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>ashok8@ipt.com</integrationUser>
        <name>OutBond Message</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>samle</fullName>
        <actions>
            <name>Complete_It</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Loan__c.Account_Type__c</field>
            <operation>equals</operation>
            <value>Savings</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>samle2</fullName>
        <actions>
            <name>Mail_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Loan__c.Active__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>samle3</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Loan__c.Competer_Type__c</field>
            <operation>equals</operation>
            <value>Developer</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>samle4</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Loan__c.Gender__c</field>
            <operation>equals</operation>
            <value>Male</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Complete_It</fullName>
        <assignedTo>shiva@ipt.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>User.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Complete It</subject>
    </tasks>
</Workflow>