.class public final Lk6/j;
.super Lk6/o;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/StringBuilder;

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/StringBuilder;

.field public final e:Ljava/lang/StringBuilder;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lk6/j;->b:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lk6/j;->c:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lk6/j;->d:Ljava/lang/StringBuilder;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lk6/j;->e:Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lk6/j;->f:Z

    .line 30
    .line 31
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->b:Lorg/jsoup/parser/Token$TokenType;

    .line 32
    .line 33
    iput-object v0, p0, Lk6/o;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final f()Lk6/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lk6/j;->b:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-static {v0}, Lk6/o;->g(Ljava/lang/StringBuilder;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lk6/j;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Lk6/j;->d:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-static {v0}, Lk6/o;->g(Ljava/lang/StringBuilder;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lk6/j;->e:Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-static {v0}, Lk6/o;->g(Ljava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lk6/j;->f:Z

    .line 21
    .line 22
    return-object p0
.end method

.method public getSystemIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk6/j;->e:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isForceQuirks()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk6/j;->f:Z

    .line 2
    .line 3
    return v0
.end method
