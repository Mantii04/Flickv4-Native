package androidx.media3.common;

import Q3.C0248s;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

@UnstableApi
/* loaded from: classes.dex */
public final class Metadata {
    private final Entry[] entries;
    public final long presentationTimeUs;

    public interface Entry {
        byte[] getWrappedMetadataBytes();

        Format getWrappedMetadataFormat();

        void populateMediaMetadata(MediaMetadata.Builder builder);
    }

    public Metadata(Entry... entryArr) {
        this(C.TIME_UNSET, entryArr);
    }

    private <T extends Entry> T entryIfMatches(Entry entry, Class<T> cls, P3.w wVar) {
        if (!cls.isAssignableFrom(entry.getClass())) {
            return null;
        }
        T cast = cls.cast(entry);
        if (wVar.apply(cast)) {
            return cast;
        }
        return null;
    }

    public Metadata copyWithAppendedEntries(Entry... entryArr) {
        return entryArr.length == 0 ? this : new Metadata(this.presentationTimeUs, (Entry[]) Util.nullSafeArrayConcatenation(this.entries, entryArr));
    }

    public Metadata copyWithAppendedEntriesFrom(Metadata metadata) {
        return metadata == null ? this : copyWithAppendedEntries(metadata.entries);
    }

    public Metadata copyWithPresentationTimeUs(long j7) {
        return this.presentationTimeUs == j7 ? this : new Metadata(j7, this.entries);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Metadata.class == obj.getClass()) {
            Metadata metadata = (Metadata) obj;
            if (Arrays.equals(this.entries, metadata.entries) && this.presentationTimeUs == metadata.presentationTimeUs) {
                return true;
            }
        }
        return false;
    }

    public Entry get(int i2) {
        return this.entries[i2];
    }

    public <T extends Entry> ImmutableList<T> getEntriesOfType(Class<T> cls) {
        C0248s builder = ImmutableList.builder();
        for (Entry entry : this.entries) {
            if (cls.isAssignableFrom(entry.getClass())) {
                builder.add((Object) cls.cast(entry));
            }
        }
        return (ImmutableList<T>) builder.build();
    }

    public <T extends Entry> T getFirstEntryOfType(Class<T> cls) {
        return (T) getFirstMatchingEntry(cls, com.google.common.base.b.alwaysTrue());
    }

    public <T extends Entry> T getFirstMatchingEntry(Class<T> cls, P3.w wVar) {
        for (Entry entry : this.entries) {
            T t6 = (T) entryIfMatches(entry, cls, wVar);
            if (t6 != null) {
                return t6;
            }
        }
        return null;
    }

    public <T extends Entry> ImmutableList<T> getMatchingEntries(Class<T> cls, P3.w wVar) {
        C0248s builder = ImmutableList.builder();
        for (Entry entry : this.entries) {
            Entry entryIfMatches = entryIfMatches(entry, cls, wVar);
            if (entryIfMatches != null) {
                builder.add((Object) entryIfMatches);
            }
        }
        return (ImmutableList<T>) builder.build();
    }

    public int hashCode() {
        return U3.f.hashCode(this.presentationTimeUs) + (Arrays.hashCode(this.entries) * 31);
    }

    public int length() {
        return this.entries.length;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("entries=");
        sb.append(Arrays.toString(this.entries));
        if (this.presentationTimeUs == C.TIME_UNSET) {
            str = "";
        } else {
            str = ", presentationTimeUs=" + this.presentationTimeUs;
        }
        sb.append(str);
        return sb.toString();
    }

    public Metadata(long j7, Entry... entryArr) {
        this.presentationTimeUs = j7;
        this.entries = entryArr;
    }

    public Metadata(List<? extends Entry> list) {
        this((Entry[]) list.toArray(new Entry[0]));
    }

    public Metadata(long j7, List<? extends Entry> list) {
        this(j7, (Entry[]) list.toArray(new Entry[0]));
    }
}
