import co.omise.model.Dispute;
import co.omise.model.Disputes;
import co.omise.model.Dispute.DisputeStatus;

Disputes disputes = Dispute.retrieve(DisputeStatus.OPEN);
