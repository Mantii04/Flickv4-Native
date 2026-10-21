package com.comcast.viper.hlsparserj.tags;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class TagFactory {
    private static ConcurrentHashMap<String, Class<?>> tagMap = new ConcurrentHashMap<>();

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.comcast.viper.hlsparserj.tags.Tag createTag(java.lang.String r3) {
        /*
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Class<?>> r0 = com.comcast.viper.hlsparserj.tags.TagFactory.tagMap
            java.lang.Object r3 = r0.get(r3)
            java.lang.Class r3 = (java.lang.Class) r3
            r0 = 0
            if (r3 == 0) goto L1d
            r1 = 0
            java.lang.Class[] r2 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L19
            java.lang.reflect.Constructor r3 = r3.getConstructor(r2)     // Catch: java.lang.Exception -> L19
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L19
            java.lang.Object r3 = r3.newInstance(r1)     // Catch: java.lang.Exception -> L19
            goto L1e
        L19:
            r3 = move-exception
            r3.printStackTrace()
        L1d:
            r3 = r0
        L1e:
            boolean r1 = r3 instanceof com.comcast.viper.hlsparserj.tags.Tag
            if (r1 == 0) goto L25
            com.comcast.viper.hlsparserj.tags.Tag r3 = (com.comcast.viper.hlsparserj.tags.Tag) r3
            return r3
        L25:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.comcast.viper.hlsparserj.tags.TagFactory.createTag(java.lang.String):com.comcast.viper.hlsparserj.tags.Tag");
    }

    public static void registerTag(String str, Class<?> cls) {
        tagMap.put(str, cls);
    }
}
