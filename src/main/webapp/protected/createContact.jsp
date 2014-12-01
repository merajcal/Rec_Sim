<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script type="text/ng-template" id="createContact.jsp">

   
        <div class="modal-header">
           <h3 id="addContactsModalLabel" class="displayInLine">
            <spring:message code="create"/>&nbsp;<spring:message code="contact"/>
        </h3>
        </div>
        <div class="modal-body">
            <form name="newContactForm" novalidate >
            <div class="pull-left">
                <div>
                    <div class="input-append">
                        <label>* <spring:message code="contacts.name"/>:</label>
                    </div>
                    <div class="input-append">
                        <input type="text"
                               required
                               autofocus
                               ng-model="contact.name"
                               name="name"
                               placeholder="<spring:message code='contact'/>&nbsp;<spring:message code='contacts.name'/>"/>
                    </div>
                    <div class="input-append">
                        <label>
                                <span class="alert alert-error"
                                      ng-show="displayValidationError && newContactForm.name.$error.required">
                                        <spring:message code="required"/>
                                </span>
                        </label>
                    </div>
                </div>
                <div>
                    <div class="input-append">
                        <label>* <spring:message code="contacts.email"/>:</label>
                    </div>
                    <div class="input-append">
                        <input type="text"
                               required
                               ng-model="contact.email"
                               name="email"
                               placeholder="<spring:message code='sample.email'/> "/>
                    </div>
                    <div class="input-append">
                        <label>
                                <span class="alert alert-error"
                                      ng-show="displayValidationError && newContactForm.email.$error.required">
                                    <spring:message code="required"/>
                                </span>
                        </label>
                    </div>
                </div>
                <div>
                    <div class="input-append">
                        <label>* <spring:message code="contacts.phone"/>:</label>
                    </div>
                    <div class="input-append">
                        <input type="text"
                               required
                               ng-model="contact.phoneNumber"
                               name="phoneNumber"
                               placeholder="<spring:message code='sample.phone'/> "/>
                    </div>
                    <div class="input-append">
                        <label>
                                <span class="alert alert-error"
                                      ng-show="displayValidationError && newContactForm.phoneNumber.$error.required">
                                    <spring:message code="required"/>
                                </span>
                        </label>
                    </div>
                </div>
               <!-- <input type="submit"
                       class="btn btn-inverse"
                       ng-click="createContact(newContactForm);"
                       value='<spring:message code="create"/>'/>
                <button class="btn btn-inverse"
                        data-dismiss="modal"
                        ng-click="exit('#addContactsModal');"
                        aria-hidden="true">
                    <spring:message code="cancel"/>
                </button>
			-->
 			<button class="btn btn-primary" ng-click="createContact(newContactForm);"><spring:message code="create"/></button>
            <button class="btn btn-warning" ng-click="cancel()">Cancel</button>
            </div>
        </form>
        </div>
       <div class="modal-footer">
           <!-- <button class="btn btn-primary" ng-click="createContact(newContactForm);"><spring:message code="create"/></button>
            <button class="btn btn-warning" ng-click="cancel()">Cancel</button>
-->
        </div>

   

</script>