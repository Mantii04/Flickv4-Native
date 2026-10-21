package x0;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public int f20724a;

    /* renamed from: b, reason: collision with root package name */
    public int f20725b;

    /* renamed from: c, reason: collision with root package name */
    public int f20726c;

    public void populateFrom(ParsableByteArray parsableByteArray) {
        this.f20724a = parsableByteArray.readLittleEndianInt();
        this.f20725b = parsableByteArray.readLittleEndianInt();
        this.f20726c = 0;
    }

    public void populateWithListHeaderFrom(ParsableByteArray parsableByteArray) throws ParserException {
        populateFrom(parsableByteArray);
        if (this.f20724a == 1414744396) {
            this.f20726c = parsableByteArray.readLittleEndianInt();
        } else {
            throw ParserException.createForMalformedContainer("LIST expected, found: " + this.f20724a, null);
        }
    }
}
