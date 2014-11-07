## Retrieve a dispute

Disputes are directly included in the [charge object](/api/charges#the-charge-object).
Alternatively, they can be retrieved with their `dispute_id`:

### Endpoint

```
GET https://api.omise.co/disputes/DISPUTE_ID
```

### Curl

```sh
curl https://api.omise.co/disputes/dspt_test_4xz61a4hy9s2b4r3uqb \
  -u skey_test_4xsjvwfnvb2g0l81sjz: \
```

### Ruby

```ruby
charge = Omise::Dispute.retrieve("dspt_test_4xz61a4hy9s2b4r3uqb")
```

### C&#35;

```c#
var result = client.DisputeService.GetDispute("dspt_test_4xz61a4hy9s2b4r3uqb");
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
  "status": "open",
  "message": null,
  "charge": "chrg_test_4xso2s8ivdej29pqnhz",
  "created": "2014-11-07T01:58:44Z"
 }
```
