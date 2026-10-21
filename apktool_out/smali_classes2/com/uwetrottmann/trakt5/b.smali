.class public final synthetic Lcom/uwetrottmann/trakt5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/uwetrottmann/trakt5/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .line 1
    iget v0, p0, Lcom/uwetrottmann/trakt5/b;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lorg/threeten/bp/OffsetDateTime;

    invoke-static {p1, p2, p3}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->b(Lorg/threeten/bp/OffsetDateTime;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lcom/uwetrottmann/trakt5/enums/AudioChannels;

    invoke-static {p1, p2, p3}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->h(Lcom/uwetrottmann/trakt5/enums/AudioChannels;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lcom/uwetrottmann/trakt5/enums/Audio;

    invoke-static {p1, p2, p3}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->c(Lcom/uwetrottmann/trakt5/enums/Audio;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Lcom/uwetrottmann/trakt5/enums/Hdr;

    invoke-static {p1, p2, p3}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->g(Lcom/uwetrottmann/trakt5/enums/Hdr;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Lcom/uwetrottmann/trakt5/enums/Resolution;

    invoke-static {p1, p2, p3}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->l(Lcom/uwetrottmann/trakt5/enums/Resolution;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Lcom/uwetrottmann/trakt5/enums/MediaType;

    invoke-static {p1, p2, p3}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->o(Lcom/uwetrottmann/trakt5/enums/MediaType;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Lcom/uwetrottmann/trakt5/enums/Rating;

    invoke-static {p1, p2, p3}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->i(Lcom/uwetrottmann/trakt5/enums/Rating;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
