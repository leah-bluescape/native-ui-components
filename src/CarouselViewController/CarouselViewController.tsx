import React from 'react';
import { requireNativeComponent } from 'react-native';

type Props = {};
type State = {}

const CarouselView = requireNativeComponent('CarouselView')

class CarouselViewController extends React.Component<Props, State> {
    render() {
        return(
            <CarouselView />
        )
    }
}

export default CarouselViewController;
