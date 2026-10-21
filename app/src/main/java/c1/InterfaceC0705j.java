package c1;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;

/* renamed from: c1.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC0705j {
    void consume(ParsableByteArray parsableByteArray) throws ParserException;

    void createTracks(v0.F f3, C0692W c0692w);

    void packetFinished(boolean z6);

    void packetStarted(long j7, int i2);

    void seek();
}
