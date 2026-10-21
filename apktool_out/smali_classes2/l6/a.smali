.class public final Ll6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll6/V;


# instance fields
.field public final a:Lorg/jsoup/nodes/b;

.field public final b:Lorg/jsoup/select/Elements;

.field public final c:Ll6/S;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/b;Lorg/jsoup/select/Elements;Ll6/S;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll6/a;->a:Lorg/jsoup/nodes/b;

    .line 5
    .line 6
    iput-object p2, p0, Ll6/a;->b:Lorg/jsoup/select/Elements;

    .line 7
    .line 8
    iput-object p3, p0, Ll6/a;->c:Ll6/S;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public head(Lj6/p;I)V
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
    iget-object p2, p0, Ll6/a;->c:Ll6/S;

    .line 8
    .line 9
    iget-object v0, p0, Ll6/a;->a:Lorg/jsoup/nodes/b;

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
    iget-object p2, p0, Ll6/a;->b:Lorg/jsoup/select/Elements;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public tail(Lj6/p;I)V
    .locals 0

    .line 1
    return-void
.end method
