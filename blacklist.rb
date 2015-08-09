@bad_urls = ["tpc.googlesyndication.com",
  "tpc.googlesyndication.com",
  "ad2.netshelter.net",
  "pagead2.googlesyndication.com",
  "cdn1sitescout.edgesuite.net",
  "clickserv.sitescout.com",
  "pixel.sitescout.com",
  "cm.g.doubleclick.net",
  "media.charter.com",
  "leadback.advertising.com",
  "graphics8.nytimes.com/adx",
  "js.moatads.com",
  "s0.2mdn.net",
  "ad.doubleclick.net"]

# define block ad of url
def block_ad(url)
  if @bad_urls.include?(url)
    puts ("ad has been blocked!")
  else
    puts ("it's not an ad!")
  end
end

# Nothing is printed yet

#should be blocked
block_ad("https://ad.doubleclick.net/ddm/trackimp/N5192.276948.NYTIMES/B8892912.120866475;dc_pre=CMKT6_GgkccCFSUHRQod2FcIHA;dc_trk_aid=293562971;dc_trk_cid=64314577;ord=2015.08.05.05.55.50?")
#shouldn't be blocked
block_ad("http://static01.nyt.com/images/2015/08/05/us/05JPBIDEN/05JPBIDEN-thumbStandard-v3.jpg")
#shouldn't be blocked
block_ad("http://graphics8.nytimes.com/adx/images/ADS/40/97/ad.409789/CRS-7044_Digi_970x250_released.jpg")
block_ad("js.moatads.com")
