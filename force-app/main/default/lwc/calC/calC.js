import { LightningElement, track } from 'lwc';

    export default class CalC extends LightningElement {

    @track num1 = 0
    @track num2 = 0
    @track result
    previousVal

    add(){
        this.result = Number(this.num1) + Number(this.num2)
        
        }
    subt() {
        this.result = Number(this.num1) - Number(this.num2)
       
    }
    mul(){
        this.result = Number(this.num1) * Number(this.num2)
        
    }
    div(){
        
      this.result = Number(this.num1) / Number(this.num2)
    
    }
    clear(){
        this.num1 = 0,
        this.num2 = 0,
        this.result = null,
        this.previousValue = null
    }

    inputNum1(event) {
    this.num1 = event.target.value
    }
    inputNum2(event) {
    this.num2 = event.target.value
    }
    result(event){
        this.result = event.target.value
    }
     previousValue(event){
      let previousVal = event.target.value
      previousVal = result
    
    }
}