<!doctype html public "-//w3c//dtd html 4.0 transitional//en">
<html>
<!--
 Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements.  See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to You under the Apache License, Version 2.0
  (the "License"); you may not use this file except in compliance with
  the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-->
<head>
   <title>JSP Chat</title>
</head>

<body bgcolor="#FFFFFF">

<form method="POST" action='chat' name="postForm">
<input type="hidden" name="action" value="post"/>
Message: <input type="text" name="message"/>
</form>

<br>
<br>

<a href="javascript:openWindow('http://127.0.0.1:8080/examples/jsp/chat/chat', 640, 480 ,0 ,0 ,0 ,0 ,0 ,1 ,10 ,10 )">Click to open chat window</a>

</body>
</html>
