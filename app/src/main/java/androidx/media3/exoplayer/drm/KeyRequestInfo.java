package androidx.media3.exoplayer.drm;

import Q3.C0248s;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.source.LoadEventInfo;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;

@UnstableApi
/* loaded from: classes.dex */
public final class KeyRequestInfo {
    public final ImmutableList<LoadEventInfo> loadInfos;
    public final ImmutableList<DrmInitData.SchemeData> schemeDatas;

    public static final class Builder {
        private final C0248s loadEventInfos = ImmutableList.builder();
        private ImmutableList<DrmInitData.SchemeData> schemeDatas;

        public Builder addLoadInfo(LoadEventInfo loadEventInfo) {
            this.loadEventInfos.add((Object) loadEventInfo);
            return this;
        }

        public KeyRequestInfo build() {
            return new KeyRequestInfo(this);
        }

        public Builder setSchemeDatas(List<DrmInitData.SchemeData> list) {
            this.schemeDatas = ImmutableList.copyOf((Collection) list);
            return this;
        }
    }

    private KeyRequestInfo(Builder builder) {
        this.loadInfos = builder.loadEventInfos.build();
        this.schemeDatas = builder.schemeDatas;
    }
}
