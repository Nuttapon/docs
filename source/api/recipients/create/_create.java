import java.util.HashMap;

import co.omise.model.Recipient;

Recipient recipient = Recipient.create(new HashMap<String, Object>() {
  {put("name", "Somchai Prasert");}
  {put("email", "somchai.prasert@example.com");}
  {put("type", "individual");}
  {put("bank_account", new HashMap<String, Object>() {
    {put("brand", "bbl");}
    {put("number", "1234567890");}
    {put("name", "SOMCHAI PRASERT");}
  });}
});
