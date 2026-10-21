package v0;

import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;

/* loaded from: classes.dex */
public interface r0 {
    void durationUs(long j7);

    void format(Format format);

    int sampleData(DataReader dataReader, int i2, boolean z6) throws IOException;

    int sampleData(DataReader dataReader, int i2, boolean z6, int i7) throws IOException;

    void sampleData(ParsableByteArray parsableByteArray, int i2);

    void sampleData(ParsableByteArray parsableByteArray, int i2, int i7);

    void sampleMetadata(long j7, int i2, int i7, int i8, q0 q0Var);
}
