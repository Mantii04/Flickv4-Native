.class final enum Lorg/jsoup/parser/TokeniserState$18;
.super Lorg/jsoup/parser/TokeniserState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "ScriptDataEndTagOpen"

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/b;Lk6/a;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->B:Lorg/jsoup/parser/TokeniserState$19;

    .line 2
    .line 3
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->n:Lorg/jsoup/parser/TokeniserState$6;

    .line 4
    .line 5
    invoke-virtual {p2}, Lk6/a;->j()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/b;->d(Z)Lk6/n;

    .line 13
    .line 14
    .line 15
    iput-object v0, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string p2, "</"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 24
    .line 25
    return-void
.end method
