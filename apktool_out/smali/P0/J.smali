.class public final LP0/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:Landroidx/media3/common/Format;

.field public final h:I

.field public final i:[J

.field public final j:[J

.field public final k:I

.field public final l:[LP0/K;


# direct methods
.method public constructor <init>(IIJJJJLandroidx/media3/common/Format;I[LP0/K;I[J[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LP0/J;->a:I

    .line 5
    .line 6
    iput p2, p0, LP0/J;->b:I

    .line 7
    .line 8
    iput-wide p3, p0, LP0/J;->c:J

    .line 9
    .line 10
    iput-wide p5, p0, LP0/J;->d:J

    .line 11
    .line 12
    iput-wide p7, p0, LP0/J;->e:J

    .line 13
    .line 14
    iput-wide p9, p0, LP0/J;->f:J

    .line 15
    .line 16
    iput-object p11, p0, LP0/J;->g:Landroidx/media3/common/Format;

    .line 17
    .line 18
    iput p12, p0, LP0/J;->h:I

    .line 19
    .line 20
    iput-object p13, p0, LP0/J;->l:[LP0/K;

    .line 21
    .line 22
    iput p14, p0, LP0/J;->k:I

    .line 23
    .line 24
    iput-object p15, p0, LP0/J;->i:[J

    .line 25
    .line 26
    move-object/from16 p1, p16

    .line 27
    .line 28
    iput-object p1, p0, LP0/J;->j:[J

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public copyWithFormat(Landroidx/media3/common/Format;)LP0/J;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, LP0/J;

    .line 4
    .line 5
    iget-object v2, v0, LP0/J;->i:[J

    .line 6
    .line 7
    iget-object v3, v0, LP0/J;->j:[J

    .line 8
    .line 9
    move-object/from16 v16, v2

    .line 10
    .line 11
    iget v2, v0, LP0/J;->a:I

    .line 12
    .line 13
    move-object/from16 v17, v3

    .line 14
    .line 15
    iget v3, v0, LP0/J;->b:I

    .line 16
    .line 17
    iget-wide v4, v0, LP0/J;->c:J

    .line 18
    .line 19
    iget-wide v6, v0, LP0/J;->d:J

    .line 20
    .line 21
    iget-wide v8, v0, LP0/J;->e:J

    .line 22
    .line 23
    iget-wide v10, v0, LP0/J;->f:J

    .line 24
    .line 25
    iget v13, v0, LP0/J;->h:I

    .line 26
    .line 27
    iget-object v14, v0, LP0/J;->l:[LP0/K;

    .line 28
    .line 29
    iget v15, v0, LP0/J;->k:I

    .line 30
    .line 31
    move-object/from16 v12, p1

    .line 32
    .line 33
    invoke-direct/range {v1 .. v17}, LP0/J;-><init>(IIJJJJLandroidx/media3/common/Format;I[LP0/K;I[J[J)V

    .line 34
    .line 35
    .line 36
    return-object v1
.end method

.method public getSampleDescriptionEncryptionBox(I)LP0/K;
    .locals 1

    .line 1
    iget-object v0, p0, LP0/J;->l:[LP0/K;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    aget-object p1, v0, p1

    .line 8
    .line 9
    return-object p1
.end method
