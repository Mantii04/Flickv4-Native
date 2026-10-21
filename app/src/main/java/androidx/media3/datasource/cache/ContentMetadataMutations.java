package androidx.media3.datasource.cache;

import P3.v;
import android.net.Uri;
import androidx.media3.common.util.UnstableApi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@UnstableApi
/* loaded from: classes.dex */
public class ContentMetadataMutations {
    private final Map<String, Object> editedValues = new HashMap();
    private final List<String> removedValues = new ArrayList();

    private ContentMetadataMutations checkAndSet(String str, Object obj) {
        this.editedValues.put((String) v.checkNotNull(str), v.checkNotNull(obj));
        this.removedValues.remove(str);
        return this;
    }

    public static ContentMetadataMutations setContentLength(ContentMetadataMutations contentMetadataMutations, long j7) {
        return contentMetadataMutations.set(ContentMetadata.KEY_CONTENT_LENGTH, j7);
    }

    public static ContentMetadataMutations setRedirectedUri(ContentMetadataMutations contentMetadataMutations, Uri uri) {
        return uri == null ? contentMetadataMutations.remove(ContentMetadata.KEY_REDIRECTED_URI) : contentMetadataMutations.set(ContentMetadata.KEY_REDIRECTED_URI, uri.toString());
    }

    public Map<String, Object> getEditedValues() {
        HashMap hashMap = new HashMap(this.editedValues);
        for (Map.Entry entry : hashMap.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                entry.setValue(Arrays.copyOf(bArr, bArr.length));
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public List<String> getRemovedValues() {
        return Collections.unmodifiableList(new ArrayList(this.removedValues));
    }

    public ContentMetadataMutations remove(String str) {
        this.removedValues.add(str);
        this.editedValues.remove(str);
        return this;
    }

    public ContentMetadataMutations set(String str, String str2) {
        return checkAndSet(str, str2);
    }

    public ContentMetadataMutations set(String str, long j7) {
        return checkAndSet(str, Long.valueOf(j7));
    }

    public ContentMetadataMutations set(String str, byte[] bArr) {
        return checkAndSet(str, Arrays.copyOf(bArr, bArr.length));
    }
}
