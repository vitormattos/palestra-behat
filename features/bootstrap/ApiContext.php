<?php
use Behat\WebApiExtension\Context\ApiClientAwareContext;
use GuzzleHttp\ClientInterface;
use Behat\WebApiExtension\Context\WebApiContext;
class ApiContext extends WebApiContext implements ApiClientAwareContext
{
    private $client;
    public function setClient(ClientInterface $client)
    {
        $this->client = $client;
    }
    /**
    * @Then /^the client should be set$/
    */
    public function theClientShouldBeSet() {
        PHPUnit_Framework_Assert::assertInstanceOf('GuzzleHttp\Client', $this->client);
    }
}