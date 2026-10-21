package androidx.media3.exoplayer;

import androidx.media3.common.text.CueGroup;
import androidx.media3.exoplayer.DefaultRendererCapabilitiesList;
import androidx.media3.exoplayer.text.TextOutput;
import java.util.List;

/* renamed from: androidx.media3.exoplayer.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0571a implements TextOutput {
    @Override // androidx.media3.exoplayer.text.TextOutput
    public final void onCues(CueGroup cueGroup) {
        DefaultRendererCapabilitiesList.Factory.lambda$createRendererCapabilitiesList$0(cueGroup);
    }

    @Override // androidx.media3.exoplayer.text.TextOutput
    public final /* synthetic */ void onCues(List list) {
        androidx.media3.exoplayer.text.b.a(this, list);
    }
}
