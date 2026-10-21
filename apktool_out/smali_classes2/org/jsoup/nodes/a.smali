.class public final Lorg/jsoup/nodes/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public b:Lorg/jsoup/nodes/Entities$EscapeMode;

.field public e:Ljava/nio/charset/Charset;

.field public final f:Ljava/lang/ThreadLocal;

.field public j:Lorg/jsoup/nodes/Entities$CoreCharset;

.field public final m:Z

.field public final n:I

.field public p:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->n:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/jsoup/nodes/a;->b:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/jsoup/nodes/a;->f:Ljava/lang/ThreadLocal;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lorg/jsoup/nodes/a;->m:Z

    .line 17
    .line 18
    iput v0, p0, Lorg/jsoup/nodes/a;->n:I

    .line 19
    .line 20
    sget-object v0, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->b:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 21
    .line 22
    iput-object v0, p0, Lorg/jsoup/nodes/a;->p:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 23
    .line 24
    const-string v0, "UTF8"

    .line 25
    .line 26
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/a;->charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/a;

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/charset/CharsetEncoder;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/a;->e:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/jsoup/nodes/a;->f:Ljava/lang/ThreadLocal;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "US-ASCII"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    sget-object v1, Lorg/jsoup/nodes/Entities$CoreCharset;->b:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v2, "UTF-"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    sget-object v1, Lorg/jsoup/nodes/Entities$CoreCharset;->e:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v1, Lorg/jsoup/nodes/Entities$CoreCharset;->f:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 43
    .line 44
    :goto_0
    iput-object v1, p0, Lorg/jsoup/nodes/a;->j:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 45
    .line 46
    return-object v0
.end method

.method public charset()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/a;->e:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public charset(Ljava/lang/String;)Lorg/jsoup/nodes/a;
    .locals 0

    .line 3
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/a;->charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/a;

    return-object p0
.end method

.method public charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/jsoup/nodes/a;->e:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/a;->clone()Lorg/jsoup/nodes/a;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/a;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v1, p0, Lorg/jsoup/nodes/a;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/a;->charset(Ljava/lang/String;)Lorg/jsoup/nodes/a;

    .line 4
    iget-object v1, p0, Lorg/jsoup/nodes/a;->b:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/Entities$EscapeMode;->valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/a;->b:Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public escapeMode()Lorg/jsoup/nodes/Entities$EscapeMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/a;->b:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public indentAmount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/a;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public outline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prettyPrint()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/nodes/a;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/a;->p:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    return-object v0
.end method

.method public syntax(Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Lorg/jsoup/nodes/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/jsoup/nodes/a;->p:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    return-object p0
.end method
