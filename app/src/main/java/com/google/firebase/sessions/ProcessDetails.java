package com.google.firebase.sessions;

import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class ProcessDetails {
    private final int importance;
    private final boolean isDefaultProcess;
    private final int pid;
    private final String processName;

    public ProcessDetails(String processName, int i2, int i7, boolean z6) {
        j.checkNotNullParameter(processName, "processName");
        this.processName = processName;
        this.pid = i2;
        this.importance = i7;
        this.isDefaultProcess = z6;
    }

    public static /* synthetic */ ProcessDetails copy$default(ProcessDetails processDetails, String str, int i2, int i7, boolean z6, int i8, Object obj) {
        if ((i8 & 1) != 0) {
            str = processDetails.processName;
        }
        if ((i8 & 2) != 0) {
            i2 = processDetails.pid;
        }
        if ((i8 & 4) != 0) {
            i7 = processDetails.importance;
        }
        if ((i8 & 8) != 0) {
            z6 = processDetails.isDefaultProcess;
        }
        return processDetails.copy(str, i2, i7, z6);
    }

    public final String component1() {
        return this.processName;
    }

    public final int component2() {
        return this.pid;
    }

    public final int component3() {
        return this.importance;
    }

    public final boolean component4() {
        return this.isDefaultProcess;
    }

    public final ProcessDetails copy(String processName, int i2, int i7, boolean z6) {
        j.checkNotNullParameter(processName, "processName");
        return new ProcessDetails(processName, i2, i7, z6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProcessDetails)) {
            return false;
        }
        ProcessDetails processDetails = (ProcessDetails) obj;
        return j.areEqual(this.processName, processDetails.processName) && this.pid == processDetails.pid && this.importance == processDetails.importance && this.isDefaultProcess == processDetails.isDefaultProcess;
    }

    public final int getImportance() {
        return this.importance;
    }

    public final int getPid() {
        return this.pid;
    }

    public final String getProcessName() {
        return this.processName;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.processName.hashCode() * 31) + this.pid) * 31) + this.importance) * 31;
        boolean z6 = this.isDefaultProcess;
        int i2 = z6;
        if (z6 != 0) {
            i2 = 1;
        }
        return hashCode + i2;
    }

    public final boolean isDefaultProcess() {
        return this.isDefaultProcess;
    }

    public String toString() {
        return "ProcessDetails(processName=" + this.processName + ", pid=" + this.pid + ", importance=" + this.importance + ", isDefaultProcess=" + this.isDefaultProcess + ')';
    }
}
