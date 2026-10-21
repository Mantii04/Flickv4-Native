.class public final La2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

.field public final c:LZ1/b;

.field public final d:LZ1/b;

.field public final e:LZ1/b;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;LZ1/b;LZ1/b;LZ1/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La2/p;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, La2/p;->b:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 7
    .line 8
    iput-object p3, p0, La2/p;->c:LZ1/b;

    .line 9
    .line 10
    iput-object p4, p0, La2/p;->d:LZ1/b;

    .line 11
    .line 12
    iput-object p5, p0, La2/p;->e:LZ1/b;

    .line 13
    .line 14
    iput-boolean p6, p0, La2/p;->f:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getEnd()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/p;->d:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La2/p;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOffset()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/p;->e:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStart()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/p;->c:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 1

    .line 1
    iget-object v0, p0, La2/p;->b:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/p;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public toContent(LT1/G;Lb2/b;)LV1/d;
    .locals 0

    .line 1
    new-instance p1, LV1/t;

    .line 2
    .line 3
    invoke-direct {p1, p2, p0}, LV1/t;-><init>(Lb2/b;La2/p;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Trim Path: {start: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, La2/p;->c:LZ1/b;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", end: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, La2/p;->d:LZ1/b;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", offset: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, La2/p;->e:LZ1/b;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "}"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
