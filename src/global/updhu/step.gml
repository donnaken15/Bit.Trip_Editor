if httprequest!=-1 {
    image_index = 0
    httprequest_update(httprequest);
    st = httprequest_get_state(httprequest);
    if st=4 {
        if (real(httprequest_get_message_body(httprequest)) <= builddate)
            { instance_destroy() exit }
        updateout = 1
        hspeed = 20
        image_index = 1
        httprequest_destroy(httprequest);
    }
    if st=5 {
        httprequest_destroy(httprequest);
        instance_destroy();
    }
}

if updateout = 1 && frame<120 && hspeed>0
    hspeed -= 0.25

if updateout = 1 && frame>=120 && frame<=200
    hspeed = 0

if updateout = 1 && frame>238
    hspeed -= 0.375

frame += 1
