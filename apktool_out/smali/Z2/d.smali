.class public final LZ2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ2/q;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:La3/d;

.field public final c:LZ2/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;La3/d;LZ2/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LZ2/d;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, LZ2/d;->b:La3/d;

    .line 7
    .line 8
    iput-object p3, p0, LZ2/d;->c:LZ2/h;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public schedule(LS2/E;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, LZ2/d;->schedule(LS2/E;IZ)V

    return-void
.end method

.method public schedule(LS2/E;IZ)V
    .locals 13

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 2
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    iget-object v2, p0, LZ2/d;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    const-string v1, "jobscheduler"

    .line 4
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/job/JobScheduler;

    .line 5
    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/Adler32;->update([B)V

    .line 7
    invoke-virtual {p1}, LS2/E;->getBackendName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/Adler32;->update([B)V

    .line 8
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 9
    invoke-virtual {p1}, LS2/E;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v3

    invoke-static {v3}, Ld3/a;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/zip/Adler32;->update([B)V

    .line 12
    invoke-virtual {p1}, LS2/E;->getExtras()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {p1}, LS2/E;->getExtras()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/Adler32;->update([B)V

    .line 14
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v1

    long-to-int v9, v1

    .line 15
    const-string v10, "JobInfoScheduler"

    const-string v11, "attemptNumber"

    if-nez p3, :cond_2

    .line 16
    invoke-virtual {v8}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 17
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 18
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    if-ne v2, v9, :cond_1

    if-lt v3, p2, :cond_2

    .line 19
    const-string v0, "Upload for context %s is already scheduled. Returning..."

    invoke-static {v10, v0, p1}, LW2/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 20
    :cond_2
    iget-object v1, p0, LZ2/d;->b:La3/d;

    check-cast v1, La3/r;

    invoke-virtual {v1, p1}, La3/r;->getNextCallTime(LS2/E;)J

    move-result-wide v3

    .line 21
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v1, v9, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 22
    invoke-virtual {p1}, LS2/E;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v2

    .line 23
    iget-object v0, p0, LZ2/d;->c:LZ2/h;

    move v5, p2

    invoke-virtual/range {v0 .. v5}, LZ2/h;->configureJob(Landroid/app/job/JobInfo$Builder;Lcom/google/android/datatransport/Priority;JI)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 24
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 25
    invoke-virtual {v1, v11, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    const-string v2, "backendName"

    invoke-virtual {p1}, LS2/E;->getBackendName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, LS2/E;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v2

    invoke-static {v2}, Ld3/a;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result v2

    const-string v11, "priority"

    invoke-virtual {v1, v11, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 28
    invoke-virtual {p1}, LS2/E;->getExtras()[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 29
    invoke-virtual {p1}, LS2/E;->getExtras()[B

    move-result-object v2

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v11, "extras"

    invoke-virtual {v1, v11, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_3
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 31
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, LZ2/d;->c:LZ2/h;

    .line 32
    invoke-virtual {p1}, LS2/E;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v9

    invoke-virtual {v2, v9, v3, v4, p2}, LZ2/h;->getScheduleDelay(Lcom/google/android/datatransport/Priority;JI)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 33
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    const/4 p1, 0x1

    aput-object v1, v5, p1

    const/4 p1, 0x2

    aput-object v2, v5, p1

    const/4 p1, 0x3

    aput-object v3, v5, p1

    aput-object v4, v5, v7

    .line 35
    const-string p1, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d"

    invoke-static {v10, p1, v5}, LW2/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method
