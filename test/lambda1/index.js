exports.handler =  async function(event, context) {
    console.log("lambda1")
    console.log("EVENT: \n" + JSON.stringify(event, null, 2))
    return context.logStreamName
}
