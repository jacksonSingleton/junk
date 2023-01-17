import { remote } from 'webdriverio'

const browser = await remote({
    capabilities: {
        browserName: 'chrome'
    }
})

await browser.url('https://www.google.com')

while(true){
    setTimeout(async () => {
        await browser.refresh()
    }, (15 * 60 * 1000))
}
