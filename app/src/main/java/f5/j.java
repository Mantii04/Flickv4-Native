package f5;

import com.android.volley.Response;
import flix.com.vision.models.StreamUrl;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public final class j implements Response.Listener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ StreamUrl f14399b;

    public j(StreamUrl streamUrl) {
        this.f14399b = streamUrl;
    }

    @Override // com.android.volley.Response.Listener
    public void onResponse(String str) {
        String valueOf = String.valueOf(str);
        StreamUrl streamUrl = this.f14399b;
        String str2 = streamUrl.stream_url;
        StringBuilder sb = new StringBuilder(valueOf);
        int length = valueOf.length();
        boolean z6 = true;
        int i2 = 0;
        while (z6) {
            length--;
            if (length >= 0) {
                if (i2 == 10 || i2 == 22 || i2 == 34 || i2 == 46 || i2 == 58) {
                    sb.deleteCharAt(length);
                }
                i2++;
            } else {
                z6 = false;
            }
        }
        streamUrl.stream_url = A.i.B(str2, sb.toString());
        EventBus.getDefault().post(streamUrl);
    }
}
