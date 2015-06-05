import java.util.HashMap;

import co.omise.model.Dispute;

Dispute dispute = Dispute.retrieve("dspt_test_4zgf15h89w8t775kcm8");
dispute.update(new HashMap<String, Object>() {
  {put("message", "Proofs and other information regarding the disputed charge ...");}
});
