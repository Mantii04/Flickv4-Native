package org.threeten.bp.zone;

import A.i;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StreamCorruptedException;
import java.net.URL;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.NavigableMap;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReferenceArray;
import org.threeten.bp.jdk8.Jdk8Methods;

/* loaded from: classes2.dex */
public final class TzdbZoneRulesProvider extends ZoneRulesProvider {
    private List<String> regionIds;
    private final ConcurrentNavigableMap<String, Version> versions = new ConcurrentSkipListMap();
    private Set<String> loadedUrls = new CopyOnWriteArraySet();

    public static class Version {
        private final String[] regionArray;
        private final AtomicReferenceArray<Object> ruleData;
        private final short[] ruleIndices;
        private final String versionId;

        public Version(String str, String[] strArr, short[] sArr, AtomicReferenceArray<Object> atomicReferenceArray) {
            this.ruleData = atomicReferenceArray;
            this.versionId = str;
            this.regionArray = strArr;
            this.ruleIndices = sArr;
        }

        public ZoneRules createRule(short s6) throws Exception {
            Object obj = this.ruleData.get(s6);
            if (obj instanceof byte[]) {
                obj = Ser.read(new DataInputStream(new ByteArrayInputStream((byte[]) obj)));
                this.ruleData.set(s6, obj);
            }
            return (ZoneRules) obj;
        }

        public ZoneRules getRules(String str) {
            int binarySearch = Arrays.binarySearch(this.regionArray, str);
            if (binarySearch < 0) {
                return null;
            }
            try {
                return createRule(this.ruleIndices[binarySearch]);
            } catch (Exception e3) {
                StringBuilder t6 = i.t("Invalid binary time-zone data: TZDB:", str, ", version: ");
                t6.append(this.versionId);
                throw new ZoneRulesException(t6.toString(), e3);
            }
        }

        public String toString() {
            return this.versionId;
        }
    }

    public TzdbZoneRulesProvider() {
        if (!load(ZoneRulesProvider.class.getClassLoader())) {
            throw new ZoneRulesException("No time-zone rules found for 'TZDB'");
        }
    }

    private boolean load(ClassLoader classLoader) {
        URL url = null;
        try {
            Enumeration<URL> resources = classLoader.getResources("org/threeten/bp/TZDB.dat");
            boolean z6 = false;
            while (resources.hasMoreElements()) {
                URL nextElement = resources.nextElement();
                try {
                    z6 |= load(nextElement);
                    url = nextElement;
                } catch (Exception e3) {
                    e = e3;
                    url = nextElement;
                    throw new ZoneRulesException("Unable to load TZDB time-zone rules: " + url, e);
                }
            }
            return z6;
        } catch (Exception e7) {
            e = e7;
        }
    }

    private Iterable<Version> loadData(InputStream inputStream) throws IOException, StreamCorruptedException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        if (dataInputStream.readByte() != 1) {
            throw new StreamCorruptedException("File format not recognised");
        }
        if (!"TZDB".equals(dataInputStream.readUTF())) {
            throw new StreamCorruptedException("File format not recognised");
        }
        int readShort = dataInputStream.readShort();
        String[] strArr = new String[readShort];
        for (int i2 = 0; i2 < readShort; i2++) {
            strArr[i2] = dataInputStream.readUTF();
        }
        int readShort2 = dataInputStream.readShort();
        String[] strArr2 = new String[readShort2];
        for (int i7 = 0; i7 < readShort2; i7++) {
            strArr2[i7] = dataInputStream.readUTF();
        }
        this.regionIds = Arrays.asList(strArr2);
        int readShort3 = dataInputStream.readShort();
        Object[] objArr = new Object[readShort3];
        for (int i8 = 0; i8 < readShort3; i8++) {
            byte[] bArr = new byte[dataInputStream.readShort()];
            dataInputStream.readFully(bArr);
            objArr[i8] = bArr;
        }
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(objArr);
        HashSet hashSet = new HashSet(readShort);
        for (int i9 = 0; i9 < readShort; i9++) {
            int readShort4 = dataInputStream.readShort();
            String[] strArr3 = new String[readShort4];
            short[] sArr = new short[readShort4];
            for (int i10 = 0; i10 < readShort4; i10++) {
                strArr3[i10] = strArr2[dataInputStream.readShort()];
                sArr[i10] = dataInputStream.readShort();
            }
            hashSet.add(new Version(strArr[i9], strArr3, sArr, atomicReferenceArray));
        }
        return hashSet;
    }

    @Override // org.threeten.bp.zone.ZoneRulesProvider
    public ZoneRules provideRules(String str, boolean z6) {
        Jdk8Methods.requireNonNull(str, "zoneId");
        ZoneRules rules = this.versions.lastEntry().getValue().getRules(str);
        if (rules != null) {
            return rules;
        }
        throw new ZoneRulesException(i.k("Unknown time-zone ID: ", str));
    }

    @Override // org.threeten.bp.zone.ZoneRulesProvider
    public NavigableMap<String, ZoneRules> provideVersions(String str) {
        TreeMap treeMap = new TreeMap();
        for (Version version : this.versions.values()) {
            ZoneRules rules = version.getRules(str);
            if (rules != null) {
                treeMap.put(version.versionId, rules);
            }
        }
        return treeMap;
    }

    @Override // org.threeten.bp.zone.ZoneRulesProvider
    public Set<String> provideZoneIds() {
        return new HashSet(this.regionIds);
    }

    public String toString() {
        return "TZDB";
    }

    public TzdbZoneRulesProvider(URL url) {
        try {
            if (load(url)) {
                return;
            }
            throw new ZoneRulesException("No time-zone rules found: " + url);
        } catch (Exception e3) {
            throw new ZoneRulesException("Unable to load TZDB time-zone rules: " + url, e3);
        }
    }

    private boolean load(URL url) throws ClassNotFoundException, IOException, ZoneRulesException {
        InputStream inputStream;
        if (!this.loadedUrls.add(url.toExternalForm())) {
            return false;
        }
        try {
            inputStream = url.openStream();
            try {
                boolean load = load(inputStream);
                if (inputStream != null) {
                    inputStream.close();
                }
                return load;
            } catch (Throwable th) {
                th = th;
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    private boolean load(InputStream inputStream) throws IOException, StreamCorruptedException {
        boolean z6 = false;
        for (Version version : loadData(inputStream)) {
            Version putIfAbsent = this.versions.putIfAbsent(version.versionId, version);
            if (putIfAbsent != null && !putIfAbsent.versionId.equals(version.versionId)) {
                throw new ZoneRulesException("Data already loaded for TZDB time-zone rules version: " + version.versionId);
            }
            z6 = true;
        }
        return z6;
    }

    public TzdbZoneRulesProvider(InputStream inputStream) {
        try {
            load(inputStream);
        } catch (Exception e3) {
            throw new ZoneRulesException("Unable to load TZDB time-zone rules", e3);
        }
    }
}
