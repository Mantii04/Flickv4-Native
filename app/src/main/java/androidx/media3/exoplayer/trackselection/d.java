package androidx.media3.exoplayer.trackselection;

import P3.p;
import android.os.Bundle;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7560a;

    public /* synthetic */ d(int i2) {
        this.f7560a = i2;
    }

    @Override // P3.p
    public final Object apply(Object obj) {
        switch (this.f7560a) {
            case 0:
                return ((TrackGroupArray) obj).toBundle();
            case 1:
                return ((DefaultTrackSelector.SelectionOverride) obj).toBundle();
            case 2:
                return TrackGroupArray.fromBundle((Bundle) obj);
            default:
                return DefaultTrackSelector.SelectionOverride.fromBundle((Bundle) obj);
        }
    }
}
