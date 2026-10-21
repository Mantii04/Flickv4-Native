.class public final Ll6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll6/T;


# instance fields
.field public final a:Lorg/jsoup/nodes/b;

.field public b:Lorg/jsoup/nodes/b;

.field public final c:Ll6/S;


# direct methods
.method public constructor <init>(Ll6/S;Lorg/jsoup/nodes/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ll6/b;->b:Lorg/jsoup/nodes/b;

    .line 6
    .line 7
    iput-object p2, p0, Ll6/b;->a:Lorg/jsoup/nodes/b;

    .line 8
    .line 9
    iput-object p1, p0, Ll6/b;->c:Ll6/S;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public head(Lj6/p;I)Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 1

    .line 1
    instance-of p2, p1, Lorg/jsoup/nodes/b;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/jsoup/nodes/b;

    .line 6
    .line 7
    iget-object p2, p0, Ll6/b;->c:Ll6/S;

    .line 8
    .line 9
    iget-object v0, p0, Ll6/b;->a:Lorg/jsoup/nodes/b;

    .line 10
    .line 11
    invoke-virtual {p2, v0, p1}, Ll6/S;->matches(Lorg/jsoup/nodes/b;Lorg/jsoup/nodes/b;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iput-object p1, p0, Ll6/b;->b:Lorg/jsoup/nodes/b;

    .line 18
    .line 19
    sget-object p1, Lorg/jsoup/select/NodeFilter$FilterResult;->j:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lorg/jsoup/select/NodeFilter$FilterResult;->b:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 23
    .line 24
    return-object p1
.end method

.method public tail(Lj6/p;I)Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 0

    .line 1
    sget-object p1, Lorg/jsoup/select/NodeFilter$FilterResult;->b:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 2
    .line 3
    return-object p1
.end method
