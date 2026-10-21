.class final Lcom/google/android/gms/measurement/internal/zzbb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Ljava/lang/Long;

.field public final i:Ljava/lang/Long;

.field public final j:Ljava/lang/Long;

.field public final k:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 17

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v9, p3

    .line 1
    invoke-direct/range {v0 .. v16}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 13

    move-wide/from16 v0, p3

    move-wide/from16 v2, p5

    move-wide/from16 v4, p7

    move-wide/from16 v6, p11

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ltz v10, :cond_0

    move v10, v12

    goto :goto_0

    :cond_0
    move v10, v11

    .line 5
    :goto_0
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    cmp-long v10, v2, v8

    if-ltz v10, :cond_1

    move v10, v12

    goto :goto_1

    :cond_1
    move v10, v11

    .line 6
    :goto_1
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    cmp-long v10, v4, v8

    if-ltz v10, :cond_2

    move v10, v12

    goto :goto_2

    :cond_2
    move v10, v11

    .line 7
    :goto_2
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    cmp-long v8, v6, v8

    if-ltz v8, :cond_3

    move v11, v12

    .line 8
    :cond_3
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbb;->a:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbb;->b:Ljava/lang/String;

    .line 11
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzbb;->c:J

    .line 12
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzbb;->d:J

    .line 13
    iput-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzbb;->e:J

    move-wide/from16 p1, p9

    .line 14
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzbb;->f:J

    .line 15
    iput-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzbb;->g:J

    move-object/from16 p1, p13

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbb;->h:Ljava/lang/Long;

    move-object/from16 p1, p14

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbb;->i:Ljava/lang/Long;

    move-object/from16 p1, p15

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbb;->j:Ljava/lang/Long;

    move-object/from16 p1, p16

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbb;->k:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/measurement/internal/zzbb;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzbb;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzbb;->j:Ljava/lang/Long;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzbb;->k:Ljava/lang/Boolean;

    .line 8
    .line 9
    move-object/from16 v16, v2

    .line 10
    .line 11
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzbb;->a:Ljava/lang/String;

    .line 12
    .line 13
    move-object/from16 v17, v3

    .line 14
    .line 15
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzbb;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzbb;->c:J

    .line 18
    .line 19
    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzbb;->d:J

    .line 20
    .line 21
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzbb;->e:J

    .line 22
    .line 23
    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzbb;->g:J

    .line 24
    .line 25
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzbb;->h:Ljava/lang/Long;

    .line 26
    .line 27
    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/zzbb;->i:Ljava/lang/Long;

    .line 28
    .line 29
    move-wide/from16 v10, p1

    .line 30
    .line 31
    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method

.method public final b(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbb;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    move-object/from16 v18, v1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object/from16 v18, p3

    .line 16
    .line 17
    :goto_0
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzbb;

    .line 18
    .line 19
    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzbb;->e:J

    .line 20
    .line 21
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzbb;->f:J

    .line 22
    .line 23
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzbb;->a:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzbb;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzbb;->c:J

    .line 28
    .line 29
    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzbb;->d:J

    .line 30
    .line 31
    iget-wide v13, v0, Lcom/google/android/gms/measurement/internal/zzbb;->g:J

    .line 32
    .line 33
    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/zzbb;->h:Ljava/lang/Long;

    .line 34
    .line 35
    move-object/from16 v16, p1

    .line 36
    .line 37
    move-object/from16 v17, p2

    .line 38
    .line 39
    invoke-direct/range {v2 .. v18}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 40
    .line 41
    .line 42
    return-object v2
.end method
