package androidx.media3.exoplayer;

import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.MetadataRetrieverInternal;
import androidx.media3.exoplayer.source.TrackGroupArray;

/* loaded from: classes.dex */
public final /* synthetic */ class V implements MetadataRetrieverInternal.RetrievalTask.OnPreparedListener, MetadataRetrieverInternal.RetrievalTask.OnFailureListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MetadataRetrieverInternal f7228a;

    public /* synthetic */ V(MetadataRetrieverInternal metadataRetrieverInternal) {
        this.f7228a = metadataRetrieverInternal;
    }

    @Override // androidx.media3.exoplayer.MetadataRetrieverInternal.RetrievalTask.OnFailureListener
    public void onFailure(Exception exc) {
        this.f7228a.lambda$startPreparation$2(exc);
    }

    @Override // androidx.media3.exoplayer.MetadataRetrieverInternal.RetrievalTask.OnPreparedListener
    public void onPrepared(TrackGroupArray trackGroupArray, Timeline timeline) {
        this.f7228a.lambda$startPreparation$1(trackGroupArray, timeline);
    }
}
