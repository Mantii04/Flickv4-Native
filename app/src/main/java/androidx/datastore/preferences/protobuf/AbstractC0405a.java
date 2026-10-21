package androidx.datastore.preferences.protobuf;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* renamed from: androidx.datastore.preferences.protobuf.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0405a implements Z {
    public static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
        Charset charset = I.f5777a;
        iterable.getClass();
        if (iterable instanceof K) {
            List<?> underlyingElements = ((K) iterable).getUnderlyingElements();
            K k7 = (K) list;
            int size = list.size();
            for (Object obj : underlyingElements) {
                if (obj == null) {
                    String str = "Element at index " + (k7.size() - size) + " is null.";
                    for (int size2 = k7.size() - 1; size2 >= size; size2--) {
                        k7.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                if (obj instanceof ByteString) {
                    k7.add((ByteString) obj);
                } else {
                    k7.add((K) obj);
                }
            }
            return;
        }
        if (iterable instanceof InterfaceC0418g0) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
        }
        int size3 = list.size();
        for (T t6 : iterable) {
            if (t6 == null) {
                String str2 = "Element at index " + (list.size() - size3) + " is null.";
                for (int size4 = list.size() - 1; size4 >= size3; size4--) {
                    list.remove(size4);
                }
                throw new NullPointerException(str2);
            }
            list.add(t6);
        }
    }

    public static UninitializedMessageException newUninitializedMessageException(InterfaceC0406a0 interfaceC0406a0) {
        return new UninitializedMessageException(interfaceC0406a0);
    }

    public abstract AbstractC0405a internalMergeFrom(AbstractC0407b abstractC0407b);

    public AbstractC0405a mergeFrom(InterfaceC0406a0 interfaceC0406a0) {
        if (((D) this).m58getDefaultInstanceForType().getClass().isInstance(interfaceC0406a0)) {
            return internalMergeFrom((AbstractC0407b) interfaceC0406a0);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
