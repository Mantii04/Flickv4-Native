package S0;

import androidx.media3.common.text.Cue;
import java.util.List;

/* loaded from: classes.dex */
public interface i {
    List<Cue> getCues(long j7);

    long getEventTime(int i2);

    int getEventTimeCount();

    int getNextEventTimeIndex(long j7);
}
