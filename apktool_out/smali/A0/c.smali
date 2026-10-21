.class public final LA0/c;
.super Lv0/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lv0/P;IJJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v1, LA0/a;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v0, v2}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, LA0/b;

    .line 13
    .line 14
    move/from16 v3, p2

    .line 15
    .line 16
    invoke-direct {v2, v0, v3}, LA0/b;-><init>(Lv0/P;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lv0/P;->getDurationUs()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-virtual {v0}, Lv0/P;->getApproxBytesPerFrame()J

    .line 24
    .line 25
    .line 26
    move-result-wide v13

    .line 27
    const/4 v5, 0x6

    .line 28
    iget v6, v0, Lv0/P;->c:I

    .line 29
    .line 30
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v15

    .line 34
    const-wide/16 v5, 0x0

    .line 35
    .line 36
    iget-wide v7, v0, Lv0/P;->j:J

    .line 37
    .line 38
    move-object/from16 v0, p0

    .line 39
    .line 40
    move-wide/from16 v9, p3

    .line 41
    .line 42
    move-wide/from16 v11, p5

    .line 43
    .line 44
    invoke-direct/range {v0 .. v15}, Lv0/p;-><init>(Lv0/l;Lv0/o;JJJJJJI)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
