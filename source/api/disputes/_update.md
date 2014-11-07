## Update a dispute

You can reply to any open dispute by updating it with a message.
Once this is done, the dispute status changes to Pending.

### Endpoint

```
PATCH https://api.omise.co/disputes/DISPUTE_ID
```

### Request Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `message`                | *(string)* Your response to the dispute. |


### Curl

```sh
curl https://api.omise.co/disputes/dspt_test_4xso2s8ivdej29pqnhz \
  -X PATCH \
  -u skey_test_4xsjvwfnvb2g0l81sjz: \
  -d "message=Vivamus nizzle mauris eget brizzle check out this ipsum shizzle."
```

### Ruby

```ruby
dispute = Omise::Dispute.retrieve("dspt_test_4xso2s8ivdej29pqnhz")
dispute.update({
  message: "Vivamus nizzle mauris eget brizzle check out this ipsum shizzle."
})
```

### C&#35;

```c#
var disputeUpdateInfo = new DisputeUpdateInfo();
disputeUpdateInfo.Id = "dspt_test_4xso2s8ivdej29pqnhz";
disputeUpdateInfo.Message = "Vivamus nizzle mauris eget brizzle check out this ipsum shizzle.";

var updateResult = client.DisputeService.UpdateDispute(disputeUpdateInfo);
```

### JSON Response

```json
{
  "object": "dispute",
  "id": "dspt_test_4xz61a4hy9s2b4r3uqb",
  "livemode": false,
  "location": "/disputes/dspt_test_4xz61a4hy9s2b4r3uqb",
  "amount": 100000,
  "currency": "thb",
  "status": "pending",
  "message": "Vivamus nizzle mauris eget brizzle check out this ipsum shizzle.",
  "charge": "chrg_test_4xso2s8ivdej29pqnhz",
  "created": "2014-11-07T01:58:44Z"
 }
```
