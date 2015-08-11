import java.util.HashMap;

import co.omise.model.Recipient;

Recipient recipient = Recipient.retrieve("recp_test_4z6p7e0m4k40txecj5o");
recipient.update(new HashMap<String, Object>() {
  {put("name", "somchai@prasert.com");}
  {put("bank_account", new HashMap<String, Object>() {
    {put("brand", "kbank");}
    {put("number", "1234567890");}
    {put("name", "SOMCHAI PRASERT");}
  });}
});
