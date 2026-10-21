package U4;

import flix.com.vision.models.VideoSource;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public interface f {
    void OnError();

    void OnSuccess(VideoSource videoSource);

    void OnSuccess(ArrayList<VideoSource> arrayList);
}
