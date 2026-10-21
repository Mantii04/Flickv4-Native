package androidx.media3.exoplayer.dash;

import Q3.A;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.dash.manifest.BaseUrl;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;

@UnstableApi
/* loaded from: classes.dex */
public final class BaseUrlExclusionList {
    private final Map<Integer, Long> excludedPriorities;
    private final Map<String, Long> excludedServiceLocations;
    private final Random random;
    private final Map<List<Pair<String, Integer>>, BaseUrl> selectionsTaken;

    public BaseUrlExclusionList() {
        this(new Random());
    }

    private static <T> void addExclusion(T t6, long j7, Map<T, Long> map) {
        if (map.containsKey(t6)) {
            j7 = Math.max(j7, ((Long) Util.castNonNull(map.get(t6))).longValue());
        }
        map.put(t6, Long.valueOf(j7));
    }

    private List<BaseUrl> applyExclusions(List<BaseUrl> list) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        removeExpiredExclusions(elapsedRealtime, this.excludedServiceLocations);
        removeExpiredExclusions(elapsedRealtime, this.excludedPriorities);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            BaseUrl baseUrl = list.get(i2);
            if (!this.excludedServiceLocations.containsKey(baseUrl.serviceLocation) && !this.excludedPriorities.containsKey(Integer.valueOf(baseUrl.priority))) {
                arrayList.add(baseUrl);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int compareBaseUrl(BaseUrl baseUrl, BaseUrl baseUrl2) {
        int compare = Integer.compare(baseUrl.priority, baseUrl2.priority);
        return compare != 0 ? compare : baseUrl.serviceLocation.compareTo(baseUrl2.serviceLocation);
    }

    public static int getPriorityCount(List<BaseUrl> list) {
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < list.size(); i2++) {
            hashSet.add(Integer.valueOf(list.get(i2).priority));
        }
        return hashSet.size();
    }

    private static <T> void removeExpiredExclusions(long j7, Map<T, Long> map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<T, Long> entry : map.entrySet()) {
            if (entry.getValue().longValue() <= j7) {
                arrayList.add(entry.getKey());
            }
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            map.remove(arrayList.get(i2));
        }
    }

    private BaseUrl selectWeighted(List<BaseUrl> list) {
        int i2 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            i2 += list.get(i7).weight;
        }
        int nextInt = this.random.nextInt(i2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            BaseUrl baseUrl = list.get(i9);
            i8 += baseUrl.weight;
            if (nextInt < i8) {
                return baseUrl;
            }
        }
        return (BaseUrl) A.getLast(list);
    }

    public void exclude(BaseUrl baseUrl, long j7) {
        long elapsedRealtime = SystemClock.elapsedRealtime() + j7;
        addExclusion(baseUrl.serviceLocation, elapsedRealtime, this.excludedServiceLocations);
        int i2 = baseUrl.priority;
        if (i2 != Integer.MIN_VALUE) {
            addExclusion(Integer.valueOf(i2), elapsedRealtime, this.excludedPriorities);
        }
    }

    public int getPriorityCountAfterExclusion(List<BaseUrl> list) {
        HashSet hashSet = new HashSet();
        List<BaseUrl> applyExclusions = applyExclusions(list);
        for (int i2 = 0; i2 < applyExclusions.size(); i2++) {
            hashSet.add(Integer.valueOf(applyExclusions.get(i2).priority));
        }
        return hashSet.size();
    }

    public void reset() {
        this.excludedServiceLocations.clear();
        this.excludedPriorities.clear();
        this.selectionsTaken.clear();
    }

    public BaseUrl selectBaseUrl(List<BaseUrl> list) {
        List<BaseUrl> applyExclusions = applyExclusions(list);
        if (applyExclusions.size() < 2) {
            return (BaseUrl) A.getFirst(applyExclusions, null);
        }
        Collections.sort(applyExclusions, new a());
        ArrayList arrayList = new ArrayList();
        int i2 = applyExclusions.get(0).priority;
        int i7 = 0;
        while (true) {
            if (i7 >= applyExclusions.size()) {
                break;
            }
            BaseUrl baseUrl = applyExclusions.get(i7);
            if (i2 == baseUrl.priority) {
                arrayList.add(new Pair(baseUrl.serviceLocation, Integer.valueOf(baseUrl.weight)));
                i7++;
            } else if (arrayList.size() == 1) {
                return applyExclusions.get(0);
            }
        }
        BaseUrl baseUrl2 = this.selectionsTaken.get(arrayList);
        if (baseUrl2 != null) {
            return baseUrl2;
        }
        BaseUrl selectWeighted = selectWeighted(applyExclusions.subList(0, arrayList.size()));
        this.selectionsTaken.put(arrayList, selectWeighted);
        return selectWeighted;
    }

    public BaseUrlExclusionList(Random random) {
        this.selectionsTaken = new HashMap();
        this.random = random;
        this.excludedServiceLocations = new HashMap();
        this.excludedPriorities = new HashMap();
    }
}
