package c1;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;

/* renamed from: c1.X, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC0693X {
    void consume(ParsableByteArray parsableByteArray, int i2) throws ParserException;

    void init(TimestampAdjuster timestampAdjuster, v0.F f3, C0692W c0692w);

    void seek();
}
