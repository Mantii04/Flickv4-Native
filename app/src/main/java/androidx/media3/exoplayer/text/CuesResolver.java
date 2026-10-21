package androidx.media3.exoplayer.text;

import S0.c;
import androidx.media3.common.text.Cue;
import com.google.common.collect.ImmutableList;

/* loaded from: classes.dex */
interface CuesResolver {
    boolean addCues(c cVar, long j7);

    void clear();

    void discardCuesBeforeTimeUs(long j7);

    ImmutableList<Cue> getCuesAtTimeUs(long j7);

    long getNextCueChangeTimeUs(long j7);

    long getPreviousCueChangeTimeUs(long j7);
}
