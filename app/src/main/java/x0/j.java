package x0;

import androidx.media3.common.util.ParsableByteArray;

/* loaded from: classes.dex */
public final class j implements InterfaceC1796a {

    /* renamed from: a, reason: collision with root package name */
    public final String f20769a;

    public j(String str) {
        this.f20769a = str;
    }

    public static j parseFrom(ParsableByteArray parsableByteArray) {
        return new j(parsableByteArray.readString(parsableByteArray.bytesLeft()));
    }

    @Override // x0.InterfaceC1796a
    public int getType() {
        return 1852994675;
    }
}
