package B0;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import v0.r0;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public final r0 f136a;

    public d(r0 r0Var) {
        this.f136a = r0Var;
    }

    public final boolean consume(ParsableByteArray parsableByteArray, long j7) throws ParserException {
        return parseHeader(parsableByteArray) && parsePayload(parsableByteArray, j7);
    }

    public abstract boolean parseHeader(ParsableByteArray parsableByteArray) throws ParserException;

    public abstract boolean parsePayload(ParsableByteArray parsableByteArray, long j7) throws ParserException;
}
