package androidx.media3.exoplayer.dash.manifest;

import G0.a;
import androidx.media3.common.util.UnstableApi;
import com.google.firebase.sessions.settings.RemoteSettings;

@UnstableApi
/* loaded from: classes.dex */
public final class EventStream {
    public final a[] events;
    public final long[] presentationTimesUs;
    public final String schemeIdUri;
    public final long timescale;
    public final String value;

    public EventStream(String str, String str2, long j7, long[] jArr, a[] aVarArr) {
        this.schemeIdUri = str;
        this.value = str2;
        this.timescale = j7;
        this.presentationTimesUs = jArr;
        this.events = aVarArr;
    }

    public String id() {
        return this.schemeIdUri + RemoteSettings.FORWARD_SLASH_STRING + this.value;
    }
}
