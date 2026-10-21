package x0;

import Q3.C0248s;
import Q3.x0;
import androidx.media3.common.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;

/* loaded from: classes.dex */
public final class h implements InterfaceC1796a {

    /* renamed from: a, reason: collision with root package name */
    public final ImmutableList f20766a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20767b;

    public h(int i2, ImmutableList immutableList) {
        this.f20767b = i2;
        this.f20766a = immutableList;
    }

    public static h parseFrom(int i2, ParsableByteArray parsableByteArray) {
        InterfaceC1796a parseFrom;
        C0248s c0248s = new C0248s();
        int limit = parsableByteArray.limit();
        int i7 = -2;
        while (parsableByteArray.bytesLeft() > 8) {
            int readLittleEndianInt = parsableByteArray.readLittleEndianInt();
            int position = parsableByteArray.getPosition() + parsableByteArray.readLittleEndianInt();
            parsableByteArray.setLimit(position);
            if (readLittleEndianInt != 1414744396) {
                switch (readLittleEndianInt) {
                    case 1718776947:
                        parseFrom = i.parseFrom(i7, parsableByteArray);
                        break;
                    case 1751742049:
                        parseFrom = e.parseFrom(parsableByteArray);
                        break;
                    case 1752331379:
                        parseFrom = f.parseFrom(parsableByteArray);
                        break;
                    case 1852994675:
                        parseFrom = j.parseFrom(parsableByteArray);
                        break;
                    default:
                        parseFrom = null;
                        break;
                }
            } else {
                parseFrom = parseFrom(parsableByteArray.readLittleEndianInt(), parsableByteArray);
            }
            if (parseFrom != null) {
                if (parseFrom.getType() == 1752331379) {
                    i7 = ((f) parseFrom).getTrackType();
                }
                c0248s.add((Object) parseFrom);
            }
            parsableByteArray.setPosition(position);
            parsableByteArray.setLimit(limit);
        }
        return new h(i2, c0248s.build());
    }

    public <T extends InterfaceC1796a> T getChild(Class<T> cls) {
        x0 it = this.f20766a.iterator();
        while (it.hasNext()) {
            T t6 = (T) it.next();
            if (t6.getClass() == cls) {
                return t6;
            }
        }
        return null;
    }

    @Override // x0.InterfaceC1796a
    public int getType() {
        return this.f20767b;
    }
}
