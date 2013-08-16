CREATE TABLE "cloudstatushistory"
(
sampledatetime timestamp without time zone,
testoutput text,
productversion varchar(255),
resourceoutout text,
addressesout text,
CONSTRAINT "cloudstatushistory_pkey" PRIMARY KEY (sampledatetime )
);
