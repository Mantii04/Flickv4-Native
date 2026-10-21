package P0;

import android.os.Bundle;
import android.util.Pair;
import androidx.media3.common.Format;
import androidx.media3.common.Label;
import androidx.media3.common.MediaItem;
import androidx.media3.common.StreamKey;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.Tracks;
import androidx.media3.common.audio.DefaultGainProvider;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import com.google.common.collect.ImmutableMultiset;
import cz.msebera.android.httpclient.message.TokenParser;
import java.util.Collection;

/* loaded from: classes.dex */
public final /* synthetic */ class y implements P3.p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2675a;

    public /* synthetic */ y(int i2) {
        this.f2675a = i2;
    }

    @Override // P3.p
    public final Object apply(Object obj) {
        String lambda$toLogString$0;
        Float lambda$new$0;
        Integer lambda$static$0;
        switch (this.f2675a) {
            case 0:
                return (J) obj;
            case 1:
                return ((Cue) obj).toSerializableBundle();
            case 2:
                long j7 = ((S0.c) obj).f3251b;
                if (j7 == androidx.media3.common.C.TIME_UNSET) {
                    j7 = 0;
                }
                return Long.valueOf(j7);
            case 3:
                String str = (String) obj;
                if (T3.a.f3675g.matchesAllOf(str) && !str.isEmpty()) {
                    return str;
                }
                StringBuilder sb = new StringBuilder(str.length() + 16);
                sb.append('\"');
                for (int i2 = 0; i2 < str.length(); i2++) {
                    char charAt = str.charAt(i2);
                    if (charAt == '\r' || charAt == '\\' || charAt == '\"') {
                        sb.append(TokenParser.ESCAPE);
                    }
                    sb.append(charAt);
                }
                sb.append('\"');
                return sb.toString();
            case 4:
                return ImmutableMultiset.copyOf((Collection) obj);
            case 5:
                return ((Label) obj).toBundle();
            case 6:
                return Label.fromBundle((Bundle) obj);
            case 7:
                lambda$toLogString$0 = Format.lambda$toLogString$0((Label) obj);
                return lambda$toLogString$0;
            case 8:
                return ((StreamKey) obj).toBundle();
            case 9:
                return ((MediaItem.SubtitleConfiguration) obj).toBundle();
            case 10:
                return StreamKey.fromBundle((Bundle) obj);
            case 11:
                return MediaItem.SubtitleConfiguration.fromBundle((Bundle) obj);
            case 12:
                return Timeline.Window.fromBundle((Bundle) obj);
            case 13:
                return Timeline.Period.fromBundle((Bundle) obj);
            case 14:
                return Format.fromBundle((Bundle) obj);
            case 15:
                return ((TrackSelectionOverride) obj).toBundle();
            case 16:
                return TrackSelectionOverride.fromBundle((Bundle) obj);
            case 17:
                return ((Tracks.Group) obj).toBundle();
            case 18:
                return Tracks.Group.fromBundle((Bundle) obj);
            case 19:
                lambda$new$0 = DefaultGainProvider.Builder.lambda$new$0((Pair) obj);
                return lambda$new$0;
            case 20:
                lambda$static$0 = CueGroup.lambda$static$0((Cue) obj);
                return lambda$static$0;
            case 21:
                return Cue.fromBundle((Bundle) obj);
            default:
                return ((Cue) obj).toBinderBasedBundle();
        }
    }
}
