package G0;

import E0.d;
import P3.v;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class b extends d {
    @Override // E0.d
    public Metadata decode(E0.b bVar, ByteBuffer byteBuffer) {
        return new Metadata(decode(new ParsableByteArray(byteBuffer.array(), byteBuffer.limit())));
    }

    public a decode(ParsableByteArray parsableByteArray) {
        return new a((String) v.checkNotNull(parsableByteArray.readNullTerminatedString()), (String) v.checkNotNull(parsableByteArray.readNullTerminatedString()), parsableByteArray.readLong(), parsableByteArray.readLong(), Arrays.copyOfRange(parsableByteArray.getData(), parsableByteArray.getPosition(), parsableByteArray.limit()));
    }
}
