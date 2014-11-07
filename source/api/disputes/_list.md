## List disputes

Four different dispute lists are available:

  * Normal: Lists all disputes
  * Open: Lists all open disputes
  * Pending: Lists all pending disputes
  * Closed: Lists all closed (won and lost) disputes

  As always, [pagination](/api/pagination) is available for these lists.

### Endpoints

```
GET https://api.omise.co/disputes
GET https://api.omise.co/disputes/open
GET https://api.omise.co/disputes/pending
GET https://api.omise.co/disputes/closed
```

### Curl

```sh
curl https://api.omise.co/disputes/ \
  -u skey_test_4xsjvwfnvb2g0l81sjz: \

curl https://api.omise.co/disputes/open \
  -u skey_test_4xsjvwfnvb2g0l81sjz: \

curl https://api.omise.co/disputes/pending \
  -u skey_test_4xsjvwfnvb2g0l81sjz: \

curl https://api.omise.co/disputes/closed \
  -u skey_test_4xsjvwfnvb2g0l81sjz: \

```

### Ruby

```ruby
disputes = Omise::Dispute.retrieve

disputes = Omise::Dispute.retrieve('open')

disputes = Omise::Dispute.retrieve('pending')

disputes = Omise::Dispute.retrieve('closed')
```

### C&#35;

```c#
var disputes = client.DisputeService.GetAllDisputes();

var disputes = client.DisputeService.GetAllDisputes('open');

var disputes = client.DisputeService.GetAllDisputes('pending');

var disputes = client.DisputeService.GetAllDisputes('closed');
```



### JSON Response

```json

{
  "object": "list",
  "from": "1970-01-01T07:00:00+07:00",
  "to": "2014-11-07T11:40:56+07:00",
  "offset": 0,
  "limit": 20,
  "total": 2,
  "data": [
    {
      "object": "dispute",
      "id": "dspt_test_4xz61a4hy9s2b4r3uqb",
      "livemode": false,
      "location": "/disputes/dspt_test_4xz61a4hy9s2b4r3uqb",
      "amount": 100000,
      "currency": "thb",
      "status": "open",
      "message": null,
      "charge": "chrg_4xz60gp4rzn60suqt9g",
      "created": "2014-11-07T01:58:44Z"
    },
    {
      "object": "dispute",
      "id": "dspt_test_4xs9408a642a1htto8z",
      "livemode": false,
      "location": "/disputes/dspt_test_4xs9408a642a1htto8z",
      "amount": 80000,
      "currency": "thb",
      "status": "won",
      "message": "Please double check.",
      "charge": "chrg_4xz64gs57ajh3hks",
      "created": "2014-11-07T01:59:12Z"
    }
  ]
}
```
