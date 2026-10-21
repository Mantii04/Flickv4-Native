.class public final LP0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/o0;


# instance fields
.field public final a:J

.field public final b:[LP0/A;

.field public final c:I


# direct methods
.method public constructor <init>(J[LP0/A;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, LP0/z;->a:J

    .line 5
    .line 6
    iput-object p3, p0, LP0/z;->b:[LP0/A;

    .line 7
    .line 8
    iput p4, p0, LP0/z;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, LP0/z;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Lv0/e0;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, LP0/z;->getSeekPoints(JI)Lv0/e0;

    move-result-object p1

    return-object p1
.end method

.method public getSeekPoints(JI)Lv0/e0;
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    .line 2
    iget-object v4, v0, LP0/z;->b:[LP0/A;

    array-length v5, v4

    if-nez v5, :cond_0

    .line 3
    new-instance v1, Lv0/e0;

    sget-object v2, Lv0/h0;->c:Lv0/h0;

    invoke-direct {v1, v2}, Lv0/e0;-><init>(Lv0/h0;)V

    return-object v1

    :cond_0
    const/4 v5, -0x1

    .line 4
    iget v6, v0, LP0/z;->c:I

    if-eq v3, v5, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    const-wide/16 v10, -0x1

    if-eq v7, v5, :cond_4

    .line 5
    aget-object v7, v4, v7

    iget-object v7, v7, LP0/A;->b:LP0/M;

    .line 6
    invoke-virtual {v7, v1, v2}, LP0/M;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v12

    if-ne v12, v5, :cond_2

    .line 7
    invoke-virtual {v7, v1, v2}, LP0/M;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v12

    :cond_2
    if-ne v12, v5, :cond_3

    .line 8
    new-instance v1, Lv0/e0;

    sget-object v2, Lv0/h0;->c:Lv0/h0;

    invoke-direct {v1, v2}, Lv0/e0;-><init>(Lv0/h0;)V

    return-object v1

    .line 9
    :cond_3
    iget-object v13, v7, LP0/M;->f:[J

    aget-wide v14, v13, v12

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iget-object v8, v7, LP0/M;->c:[J

    aget-wide v18, v8, v12

    cmp-long v9, v14, v1

    if-gez v9, :cond_5

    .line 11
    iget v9, v7, LP0/M;->b:I

    add-int/lit8 v9, v9, -0x1

    if-ge v12, v9, :cond_5

    .line 12
    invoke-virtual {v7, v1, v2}, LP0/M;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    if-eq v1, v5, :cond_5

    if-eq v1, v12, :cond_5

    .line 13
    aget-wide v9, v13, v1

    .line 14
    aget-wide v1, v8, v1

    goto :goto_1

    :cond_4
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v18, 0x7fffffffffffffffL

    move-wide v14, v1

    :cond_5
    move-wide v1, v10

    move-wide/from16 v9, v16

    :goto_1
    if-ne v3, v5, :cond_c

    const/4 v3, 0x0

    move-wide/from16 v7, v18

    .line 15
    :goto_2
    array-length v11, v4

    if-ge v3, v11, :cond_d

    if-eq v3, v6, :cond_b

    .line 16
    aget-object v11, v4, v3

    iget-object v11, v11, LP0/A;->b:LP0/M;

    .line 17
    invoke-virtual {v11, v14, v15}, LP0/M;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v12

    if-ne v12, v5, :cond_6

    .line 18
    invoke-virtual {v11, v14, v15}, LP0/M;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v12

    .line 19
    :cond_6
    iget-object v13, v11, LP0/M;->c:[J

    if-ne v12, v5, :cond_7

    move/from16 v20, v6

    goto :goto_3

    :cond_7
    move/from16 v20, v6

    .line 20
    aget-wide v5, v13, v12

    .line 21
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :goto_3
    cmp-long v5, v9, v16

    if-eqz v5, :cond_a

    .line 22
    invoke-virtual {v11, v9, v10}, LP0/M;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    .line 23
    invoke-virtual {v11, v9, v10}, LP0/M;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v5

    :cond_8
    if-ne v5, v6, :cond_9

    goto :goto_4

    .line 24
    :cond_9
    aget-wide v11, v13, v5

    .line 25
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_4

    :cond_a
    const/4 v6, -0x1

    goto :goto_4

    :cond_b
    move/from16 v20, v6

    move v6, v5

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v5, v6

    move/from16 v6, v20

    goto :goto_2

    :cond_c
    move-wide/from16 v7, v18

    .line 26
    :cond_d
    new-instance v3, Lv0/h0;

    invoke-direct {v3, v14, v15, v7, v8}, Lv0/h0;-><init>(JJ)V

    cmp-long v4, v9, v16

    if-nez v4, :cond_e

    .line 27
    new-instance v1, Lv0/e0;

    invoke-direct {v1, v3}, Lv0/e0;-><init>(Lv0/h0;)V

    return-object v1

    .line 28
    :cond_e
    new-instance v4, Lv0/h0;

    invoke-direct {v4, v9, v10, v1, v2}, Lv0/h0;-><init>(JJ)V

    .line 29
    new-instance v1, Lv0/e0;

    invoke-direct {v1, v3, v4}, Lv0/e0;-><init>(Lv0/h0;Lv0/h0;)V

    return-object v1
.end method

.method public final synthetic isEstimated()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/d0;->a(Lv0/g0;)Z

    move-result v0

    return v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public isSeekable(I)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method
