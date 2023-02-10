env "algolia-key=${'$'}ALGOLIA_KEY" java -jar /opt/builder/help-publication-agent.jar \
update-index \
--application-name ${'$'}ALGOLIA_APP_NAME \
--index-name ${'$'}ALGOLIA_INDEX_NAME \
--product ${'$'}CONFIG_JSON_PRODUCT \
--version ${'$'}CONFIG_JSON_VERSION \
--index-directory algolia-index/ \
2>&1 | tee algolia-update-index-log.txt
