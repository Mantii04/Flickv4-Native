.class public final LC/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC/h;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, LC/h;->b:I

    .line 7
    .line 8
    iput-boolean p3, p0, LC/h;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, LC/h;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, LC/h;->e:I

    .line 13
    .line 14
    iput p6, p0, LC/h;->f:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LC/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .line 1
    iget v0, p0, LC/h;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getTtcIndex()I
    .locals 1

    .line 1
    iget v0, p0, LC/h;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getVariationSettings()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LC/h;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 1
    iget v0, p0, LC/h;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LC/h;->c:Z

    .line 2
    .line 3
    return v0
.end method
