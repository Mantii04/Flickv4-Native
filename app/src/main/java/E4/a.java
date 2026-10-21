package E4;

import android.view.KeyEvent;
import android.widget.TextView;
import e.AbstractActivityC0842v;
import flix.com.vision.activities.adult.AdultZonePINEntryActivity;
import flix.com.vision.api.alldebrid.AllDebridApiKeyEntryActivity;
import flix.com.vision.api.offcloud.OffCloudApiKeyEntryActivity;
import flix.com.vision.api.premiumize.PremApiKeyEntryActivity;
import flix.com.vision.api.torbox.TorBoxApiKeyEntryActivity;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements TextView.OnEditorActionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f971a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractActivityC0842v f972b;

    public /* synthetic */ a(AbstractActivityC0842v abstractActivityC0842v, int i2) {
        this.f971a = i2;
        this.f972b = abstractActivityC0842v;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        AbstractActivityC0842v abstractActivityC0842v = this.f972b;
        switch (this.f971a) {
            case 0:
                int i7 = AllDebridApiKeyEntryActivity.f15797p;
                AllDebridApiKeyEntryActivity allDebridApiKeyEntryActivity = (AllDebridApiKeyEntryActivity) abstractActivityC0842v;
                if (i2 != 6) {
                    allDebridApiKeyEntryActivity.getClass();
                    break;
                } else {
                    allDebridApiKeyEntryActivity.e();
                    break;
                }
            case 1:
                int i8 = OffCloudApiKeyEntryActivity.f15808p;
                OffCloudApiKeyEntryActivity offCloudApiKeyEntryActivity = (OffCloudApiKeyEntryActivity) abstractActivityC0842v;
                if (i2 != 6) {
                    offCloudApiKeyEntryActivity.getClass();
                    break;
                } else {
                    offCloudApiKeyEntryActivity.e();
                    break;
                }
            case 2:
                int i9 = PremApiKeyEntryActivity.f15815p;
                PremApiKeyEntryActivity premApiKeyEntryActivity = (PremApiKeyEntryActivity) abstractActivityC0842v;
                if (i2 != 6) {
                    premApiKeyEntryActivity.getClass();
                    break;
                } else {
                    premApiKeyEntryActivity.e();
                    break;
                }
            case 3:
                int i10 = TorBoxApiKeyEntryActivity.f15841p;
                TorBoxApiKeyEntryActivity torBoxApiKeyEntryActivity = (TorBoxApiKeyEntryActivity) abstractActivityC0842v;
                if (i2 != 6) {
                    torBoxApiKeyEntryActivity.getClass();
                    break;
                } else {
                    torBoxApiKeyEntryActivity.e();
                    break;
                }
            default:
                int i11 = AdultZonePINEntryActivity.f15396t;
                AdultZonePINEntryActivity adultZonePINEntryActivity = (AdultZonePINEntryActivity) abstractActivityC0842v;
                if (i2 != 6) {
                    adultZonePINEntryActivity.getClass();
                    break;
                } else {
                    adultZonePINEntryActivity.e();
                    break;
                }
        }
        return false;
    }
}
