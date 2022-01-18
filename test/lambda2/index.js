exports.handler =  async function(event, context) {
    console.log("lambda2")
    console.log("EVENT: \n" + JSON.stringify(event, null, 2) + " lambda2")
    return context.logStreamName
}